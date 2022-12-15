**free

ctl-opt dftactgrp(*no);

dcl-pi P2049;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1076.rpgleinc'
/copy 'qrpgleref/P310.rpgleinc'
/copy 'qrpgleref/P1102.rpgleinc'

dcl-ds theTable extname('T341') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T341 LIMIT 1;

theCharVar = 'Hello from P2049';
dsply theCharVar;
P1076();
P310();
P1102();
return;