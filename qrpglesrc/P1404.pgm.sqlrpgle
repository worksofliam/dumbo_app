**free

ctl-opt dftactgrp(*no);

dcl-pi P1404;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1188.rpgleinc'
/copy 'qrpgleref/P906.rpgleinc'
/copy 'qrpgleref/P1213.rpgleinc'

dcl-ds T143 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T143 FROM T143 LIMIT 1;

theCharVar = 'Hello from P1404';
dsply theCharVar;
P1188();
P906();
P1213();
return;