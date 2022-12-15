**free

ctl-opt dftactgrp(*no);

dcl-pi P3042;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2049.rpgleinc'
/copy 'qrpgleref/P1382.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'

dcl-ds T151 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T151 FROM T151 LIMIT 1;

theCharVar = 'Hello from P3042';
dsply theCharVar;
P2049();
P1382();
P83();
return;