**free

ctl-opt dftactgrp(*no);

dcl-pi P3504;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P712.rpgleinc'
/copy 'qrpgleref/P571.rpgleinc'
/copy 'qrpgleref/P2669.rpgleinc'

dcl-ds T1158 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1158 FROM T1158 LIMIT 1;

theCharVar = 'Hello from P3504';
dsply theCharVar;
P712();
P571();
P2669();
return;