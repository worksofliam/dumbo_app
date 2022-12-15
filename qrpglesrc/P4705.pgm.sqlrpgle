**free

ctl-opt dftactgrp(*no);

dcl-pi P4705;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P427.rpgleinc'
/copy 'qrpgleref/P4464.rpgleinc'
/copy 'qrpgleref/P1510.rpgleinc'

dcl-ds T1148 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1148 FROM T1148 LIMIT 1;

theCharVar = 'Hello from P4705';
dsply theCharVar;
P427();
P4464();
P1510();
return;