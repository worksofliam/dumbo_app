**free

ctl-opt dftactgrp(*no);

dcl-pi P1392;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P767.rpgleinc'
/copy 'qrpgleref/P1069.rpgleinc'
/copy 'qrpgleref/P1056.rpgleinc'

dcl-ds theTable extname('T240') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T240 LIMIT 1;

theCharVar = 'Hello from P1392';
dsply theCharVar;
P767();
P1069();
P1056();
return;