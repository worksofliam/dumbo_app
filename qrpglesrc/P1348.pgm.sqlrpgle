**free

ctl-opt dftactgrp(*no);

dcl-pi P1348;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P518.rpgleinc'
/copy 'qrpgleref/P728.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'

dcl-ds T1586 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1586 FROM T1586 LIMIT 1;

theCharVar = 'Hello from P1348';
dsply theCharVar;
P518();
P728();
P133();
return;