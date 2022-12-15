**free

ctl-opt dftactgrp(*no);

dcl-pi P557;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P360.rpgleinc'
/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P433.rpgleinc'

dcl-ds T1235 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1235 FROM T1235 LIMIT 1;

theCharVar = 'Hello from P557';
dsply theCharVar;
P360();
P2();
P433();
return;