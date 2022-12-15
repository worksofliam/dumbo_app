**free

ctl-opt dftactgrp(*no);

dcl-pi P1310;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P912.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P711.rpgleinc'

dcl-ds T939 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T939 FROM T939 LIMIT 1;

theCharVar = 'Hello from P1310';
dsply theCharVar;
P912();
P23();
P711();
return;