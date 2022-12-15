**free

ctl-opt dftactgrp(*no);

dcl-pi P344;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P278.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds theTable extname('T75') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T75 LIMIT 1;

theCharVar = 'Hello from P344';
dsply theCharVar;
P46();
P278();
P12();
return;