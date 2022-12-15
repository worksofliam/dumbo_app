**free

ctl-opt dftactgrp(*no);

dcl-pi P3199;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1931.rpgleinc'
/copy 'qrpgleref/P1805.rpgleinc'
/copy 'qrpgleref/P3198.rpgleinc'

dcl-ds T187 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T187 FROM T187 LIMIT 1;

theCharVar = 'Hello from P3199';
dsply theCharVar;
P1931();
P1805();
P3198();
return;