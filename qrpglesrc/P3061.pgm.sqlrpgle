**free

ctl-opt dftactgrp(*no);

dcl-pi P3061;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2684.rpgleinc'
/copy 'qrpgleref/P632.rpgleinc'
/copy 'qrpgleref/P2710.rpgleinc'

dcl-ds T382 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T382 FROM T382 LIMIT 1;

theCharVar = 'Hello from P3061';
dsply theCharVar;
P2684();
P632();
P2710();
return;