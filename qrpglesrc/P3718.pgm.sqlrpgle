**free

ctl-opt dftactgrp(*no);

dcl-pi P3718;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2268.rpgleinc'
/copy 'qrpgleref/P1013.rpgleinc'
/copy 'qrpgleref/P843.rpgleinc'

dcl-ds T1041 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1041 FROM T1041 LIMIT 1;

theCharVar = 'Hello from P3718';
dsply theCharVar;
P2268();
P1013();
P843();
return;