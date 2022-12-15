**free

ctl-opt dftactgrp(*no);

dcl-pi P83;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'

dcl-ds T594 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T594 FROM T594 LIMIT 1;

theCharVar = 'Hello from P83';
dsply theCharVar;
P33();
P58();
P74();
return;