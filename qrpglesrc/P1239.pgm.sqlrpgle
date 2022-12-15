**free

ctl-opt dftactgrp(*no);

dcl-pi P1239;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1023.rpgleinc'
/copy 'qrpgleref/P519.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'

dcl-ds T259 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T259 FROM T259 LIMIT 1;

theCharVar = 'Hello from P1239';
dsply theCharVar;
P1023();
P519();
P28();
return;