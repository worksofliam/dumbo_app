**free

ctl-opt dftactgrp(*no);

dcl-pi P3054;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2132.rpgleinc'
/copy 'qrpgleref/P1386.rpgleinc'
/copy 'qrpgleref/P141.rpgleinc'

dcl-ds T725 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T725 FROM T725 LIMIT 1;

theCharVar = 'Hello from P3054';
dsply theCharVar;
P2132();
P1386();
P141();
return;