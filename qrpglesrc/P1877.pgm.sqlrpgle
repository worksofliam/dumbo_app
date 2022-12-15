**free

ctl-opt dftactgrp(*no);

dcl-pi P1877;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P832.rpgleinc'
/copy 'qrpgleref/P327.rpgleinc'
/copy 'qrpgleref/P1255.rpgleinc'

dcl-ds T1858 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1858 FROM T1858 LIMIT 1;

theCharVar = 'Hello from P1877';
dsply theCharVar;
P832();
P327();
P1255();
return;