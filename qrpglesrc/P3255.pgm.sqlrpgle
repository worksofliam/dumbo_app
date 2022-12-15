**free

ctl-opt dftactgrp(*no);

dcl-pi P3255;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1360.rpgleinc'
/copy 'qrpgleref/P2776.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'

dcl-ds T423 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T423 FROM T423 LIMIT 1;

theCharVar = 'Hello from P3255';
dsply theCharVar;
P1360();
P2776();
P83();
return;