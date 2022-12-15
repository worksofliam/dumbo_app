**free

ctl-opt dftactgrp(*no);

dcl-pi P1419;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1314.rpgleinc'
/copy 'qrpgleref/P422.rpgleinc'
/copy 'qrpgleref/P579.rpgleinc'

dcl-ds T445 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T445 FROM T445 LIMIT 1;

theCharVar = 'Hello from P1419';
dsply theCharVar;
P1314();
P422();
P579();
return;