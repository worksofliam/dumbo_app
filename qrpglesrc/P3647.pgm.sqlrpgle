**free

ctl-opt dftactgrp(*no);

dcl-pi P3647;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P966.rpgleinc'
/copy 'qrpgleref/P1259.rpgleinc'
/copy 'qrpgleref/P2344.rpgleinc'

dcl-ds T1109 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1109 FROM T1109 LIMIT 1;

theCharVar = 'Hello from P3647';
dsply theCharVar;
P966();
P1259();
P2344();
return;