**free

ctl-opt dftactgrp(*no);

dcl-pi P299;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P91.rpgleinc'
/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'

dcl-ds T1189 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1189 FROM T1189 LIMIT 1;

theCharVar = 'Hello from P299';
dsply theCharVar;
P91();
P131();
P181();
return;