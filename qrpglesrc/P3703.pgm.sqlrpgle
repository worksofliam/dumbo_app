**free

ctl-opt dftactgrp(*no);

dcl-pi P3703;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1852.rpgleinc'
/copy 'qrpgleref/P903.rpgleinc'
/copy 'qrpgleref/P728.rpgleinc'

dcl-ds T66 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T66 FROM T66 LIMIT 1;

theCharVar = 'Hello from P3703';
dsply theCharVar;
P1852();
P903();
P728();
return;