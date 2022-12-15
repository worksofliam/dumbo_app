**free

ctl-opt dftactgrp(*no);

dcl-pi P312;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'

dcl-ds T983 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T983 FROM T983 LIMIT 1;

theCharVar = 'Hello from P312';
dsply theCharVar;
P28();
P84();
P133();
return;