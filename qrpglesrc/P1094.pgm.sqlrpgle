**free

ctl-opt dftactgrp(*no);

dcl-pi P1094;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P527.rpgleinc'
/copy 'qrpgleref/P542.rpgleinc'
/copy 'qrpgleref/P612.rpgleinc'

dcl-ds theTable extname('T19') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T19 LIMIT 1;

theCharVar = 'Hello from P1094';
dsply theCharVar;
P527();
P542();
P612();
return;