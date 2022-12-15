**free

ctl-opt dftactgrp(*no);

dcl-pi P2781;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2257.rpgleinc'
/copy 'qrpgleref/P1907.rpgleinc'
/copy 'qrpgleref/P729.rpgleinc'

dcl-ds T38 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T38 FROM T38 LIMIT 1;

theCharVar = 'Hello from P2781';
dsply theCharVar;
P2257();
P1907();
P729();
return;