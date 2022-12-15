**free

ctl-opt dftactgrp(*no);

dcl-pi P111;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P99.rpgleinc'

dcl-ds T351 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T351 FROM T351 LIMIT 1;

theCharVar = 'Hello from P111';
dsply theCharVar;
P78();
P53();
P99();
return;