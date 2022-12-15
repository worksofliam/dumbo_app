**free

ctl-opt dftactgrp(*no);

dcl-pi P1287;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P547.rpgleinc'
/copy 'qrpgleref/P429.rpgleinc'
/copy 'qrpgleref/P836.rpgleinc'

dcl-ds T422 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T422 FROM T422 LIMIT 1;

theCharVar = 'Hello from P1287';
dsply theCharVar;
P547();
P429();
P836();
return;