**free

ctl-opt dftactgrp(*no);

dcl-pi P921;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P775.rpgleinc'
/copy 'qrpgleref/P841.rpgleinc'
/copy 'qrpgleref/P452.rpgleinc'

dcl-ds theTable extname('T278') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T278 LIMIT 1;

theCharVar = 'Hello from P921';
dsply theCharVar;
P775();
P841();
P452();
return;