**free

ctl-opt dftactgrp(*no);

dcl-pi P3425;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1987.rpgleinc'
/copy 'qrpgleref/P2870.rpgleinc'
/copy 'qrpgleref/P3382.rpgleinc'

dcl-ds T308 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T308 FROM T308 LIMIT 1;

theCharVar = 'Hello from P3425';
dsply theCharVar;
P1987();
P2870();
P3382();
return;