**free

ctl-opt dftactgrp(*no);

dcl-pi P2419;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1048.rpgleinc'
/copy 'qrpgleref/P1189.rpgleinc'
/copy 'qrpgleref/P285.rpgleinc'

dcl-ds T870 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T870 FROM T870 LIMIT 1;

theCharVar = 'Hello from P2419';
dsply theCharVar;
P1048();
P1189();
P285();
return;