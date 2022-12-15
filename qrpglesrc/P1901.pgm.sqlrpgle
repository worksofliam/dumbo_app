**free

ctl-opt dftactgrp(*no);

dcl-pi P1901;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P810.rpgleinc'
/copy 'qrpgleref/P1458.rpgleinc'
/copy 'qrpgleref/P144.rpgleinc'

dcl-ds T411 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T411 FROM T411 LIMIT 1;

theCharVar = 'Hello from P1901';
dsply theCharVar;
P810();
P1458();
P144();
return;