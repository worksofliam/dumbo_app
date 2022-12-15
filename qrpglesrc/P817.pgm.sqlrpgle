**free

ctl-opt dftactgrp(*no);

dcl-pi P817;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P331.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P203.rpgleinc'

dcl-ds T24 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T24 FROM T24 LIMIT 1;

theCharVar = 'Hello from P817';
dsply theCharVar;
P331();
P6();
P203();
return;