**free

ctl-opt dftactgrp(*no);

dcl-pi P2406;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P453.rpgleinc'
/copy 'qrpgleref/P1445.rpgleinc'
/copy 'qrpgleref/P974.rpgleinc'

dcl-ds T767 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T767 FROM T767 LIMIT 1;

theCharVar = 'Hello from P2406';
dsply theCharVar;
P453();
P1445();
P974();
return;