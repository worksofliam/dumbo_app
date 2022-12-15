**free

ctl-opt dftactgrp(*no);

dcl-pi P5603;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4416.rpgleinc'
/copy 'qrpgleref/P3382.rpgleinc'
/copy 'qrpgleref/P3066.rpgleinc'

dcl-ds T790 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T790 FROM T790 LIMIT 1;

theCharVar = 'Hello from P5603';
dsply theCharVar;
P4416();
P3382();
P3066();
return;