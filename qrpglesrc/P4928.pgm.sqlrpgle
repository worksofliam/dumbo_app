**free

ctl-opt dftactgrp(*no);

dcl-pi P4928;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P562.rpgleinc'
/copy 'qrpgleref/P832.rpgleinc'
/copy 'qrpgleref/P3408.rpgleinc'

dcl-ds T1153 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1153 FROM T1153 LIMIT 1;

theCharVar = 'Hello from P4928';
dsply theCharVar;
P562();
P832();
P3408();
return;