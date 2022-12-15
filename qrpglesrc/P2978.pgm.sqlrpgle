**free

ctl-opt dftactgrp(*no);

dcl-pi P2978;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1629.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P1773.rpgleinc'

dcl-ds T688 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T688 FROM T688 LIMIT 1;

theCharVar = 'Hello from P2978';
dsply theCharVar;
P1629();
P52();
P1773();
return;