**free

ctl-opt dftactgrp(*no);

dcl-pi P311;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds theTable extname('T438') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T438 LIMIT 1;

theCharVar = 'Hello from P311';
dsply theCharVar;
P241();
P207();
P12();
return;