**free

ctl-opt dftactgrp(*no);

dcl-pi P2359;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1720.rpgleinc'
/copy 'qrpgleref/P466.rpgleinc'
/copy 'qrpgleref/P1357.rpgleinc'

dcl-ds theTable extname('T488') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T488 LIMIT 1;

theCharVar = 'Hello from P2359';
dsply theCharVar;
P1720();
P466();
P1357();
return;