**free

ctl-opt dftactgrp(*no);

dcl-pi P3591;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1724.rpgleinc'
/copy 'qrpgleref/P2077.rpgleinc'
/copy 'qrpgleref/P3042.rpgleinc'

dcl-ds theTable extname('T337') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T337 LIMIT 1;

theCharVar = 'Hello from P3591';
dsply theCharVar;
P1724();
P2077();
P3042();
return;