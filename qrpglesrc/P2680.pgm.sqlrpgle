**free

ctl-opt dftactgrp(*no);

dcl-pi P2680;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2275.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P2344.rpgleinc'

dcl-ds T1259 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1259 FROM T1259 LIMIT 1;

theCharVar = 'Hello from P2680';
dsply theCharVar;
P2275();
P26();
P2344();
return;