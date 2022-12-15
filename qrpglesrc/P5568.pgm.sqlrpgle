**free

ctl-opt dftactgrp(*no);

dcl-pi P5568;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1751.rpgleinc'
/copy 'qrpgleref/P315.rpgleinc'
/copy 'qrpgleref/P1287.rpgleinc'

dcl-ds T1169 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1169 FROM T1169 LIMIT 1;

theCharVar = 'Hello from P5568';
dsply theCharVar;
P1751();
P315();
P1287();
return;