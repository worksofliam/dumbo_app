**free

ctl-opt dftactgrp(*no);

dcl-pi P3495;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3172.rpgleinc'
/copy 'qrpgleref/P1961.rpgleinc'
/copy 'qrpgleref/P2063.rpgleinc'

dcl-ds T656 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T656 FROM T656 LIMIT 1;

theCharVar = 'Hello from P3495';
dsply theCharVar;
P3172();
P1961();
P2063();
return;