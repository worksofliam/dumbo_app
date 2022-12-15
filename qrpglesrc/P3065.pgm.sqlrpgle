**free

ctl-opt dftactgrp(*no);

dcl-pi P3065;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1236.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'

dcl-ds T643 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T643 FROM T643 LIMIT 1;

theCharVar = 'Hello from P3065';
dsply theCharVar;
P1236();
P198();
P94();
return;