**free

ctl-opt dftactgrp(*no);

dcl-pi P428;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds T1209 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1209 FROM T1209 LIMIT 1;

theCharVar = 'Hello from P428';
dsply theCharVar;
P181();
P175();
P7();
return;