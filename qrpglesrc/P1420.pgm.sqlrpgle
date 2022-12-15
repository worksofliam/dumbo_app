**free

ctl-opt dftactgrp(*no);

dcl-pi P1420;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1350.rpgleinc'
/copy 'qrpgleref/P682.rpgleinc'
/copy 'qrpgleref/P587.rpgleinc'

dcl-ds T422 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T422 FROM T422 LIMIT 1;

theCharVar = 'Hello from P1420';
dsply theCharVar;
P1350();
P682();
P587();
return;