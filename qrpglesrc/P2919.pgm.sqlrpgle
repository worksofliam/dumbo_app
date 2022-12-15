**free

ctl-opt dftactgrp(*no);

dcl-pi P2919;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2812.rpgleinc'
/copy 'qrpgleref/P1933.rpgleinc'
/copy 'qrpgleref/P681.rpgleinc'

dcl-ds T459 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T459 FROM T459 LIMIT 1;

theCharVar = 'Hello from P2919';
dsply theCharVar;
P2812();
P1933();
P681();
return;