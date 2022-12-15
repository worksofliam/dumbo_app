**free

ctl-opt dftactgrp(*no);

dcl-pi P1183;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1181.rpgleinc'
/copy 'qrpgleref/P315.rpgleinc'
/copy 'qrpgleref/P732.rpgleinc'

dcl-ds T57 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T57 FROM T57 LIMIT 1;

theCharVar = 'Hello from P1183';
dsply theCharVar;
P1181();
P315();
P732();
return;