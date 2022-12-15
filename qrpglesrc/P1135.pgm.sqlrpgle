**free

ctl-opt dftactgrp(*no);

dcl-pi P1135;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1009.rpgleinc'
/copy 'qrpgleref/P1034.rpgleinc'
/copy 'qrpgleref/P1079.rpgleinc'

dcl-ds T1269 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1269 FROM T1269 LIMIT 1;

theCharVar = 'Hello from P1135';
dsply theCharVar;
P1009();
P1034();
P1079();
return;