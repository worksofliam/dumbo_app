**free

ctl-opt dftactgrp(*no);

dcl-pi P1930;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1874.rpgleinc'
/copy 'qrpgleref/P139.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'

dcl-ds T99 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T99 FROM T99 LIMIT 1;

theCharVar = 'Hello from P1930';
dsply theCharVar;
P1874();
P139();
P123();
return;