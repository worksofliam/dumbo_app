**free

ctl-opt dftactgrp(*no);

dcl-pi P2108;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1076.rpgleinc'
/copy 'qrpgleref/P579.rpgleinc'
/copy 'qrpgleref/P443.rpgleinc'

dcl-ds theTable extname('T448') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T448 LIMIT 1;

theCharVar = 'Hello from P2108';
dsply theCharVar;
P1076();
P579();
P443();
return;