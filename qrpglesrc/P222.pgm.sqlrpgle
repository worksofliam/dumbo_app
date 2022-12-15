**free

ctl-opt dftactgrp(*no);

dcl-pi P222;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P149.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds T1054 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1054 FROM T1054 LIMIT 1;

theCharVar = 'Hello from P222';
dsply theCharVar;
P149();
P42();
P28();
return;