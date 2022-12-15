**free

ctl-opt dftactgrp(*no);

dcl-pi P5319;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1016.rpgleinc'
/copy 'qrpgleref/P5208.rpgleinc'
/copy 'qrpgleref/P3726.rpgleinc'

dcl-ds T439 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T439 FROM T439 LIMIT 1;

theCharVar = 'Hello from P5319';
dsply theCharVar;
P1016();
P5208();
P3726();
return;