**free

ctl-opt dftactgrp(*no);

dcl-pi P1032;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P663.rpgleinc'
/copy 'qrpgleref/P311.rpgleinc'
/copy 'qrpgleref/P656.rpgleinc'

dcl-ds theTable extname('T161') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T161 LIMIT 1;

theCharVar = 'Hello from P1032';
dsply theCharVar;
P663();
P311();
P656();
return;