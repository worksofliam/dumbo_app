**free

ctl-opt dftactgrp(*no);

dcl-pi P1885;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P496.rpgleinc'
/copy 'qrpgleref/P1290.rpgleinc'
/copy 'qrpgleref/P216.rpgleinc'

dcl-ds T1720 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1720 FROM T1720 LIMIT 1;

theCharVar = 'Hello from P1885';
dsply theCharVar;
P496();
P1290();
P216();
return;