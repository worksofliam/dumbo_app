**free

ctl-opt dftactgrp(*no);

dcl-pi P4749;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P573.rpgleinc'
/copy 'qrpgleref/P4420.rpgleinc'
/copy 'qrpgleref/P3927.rpgleinc'

dcl-ds T1181 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1181 FROM T1181 LIMIT 1;

theCharVar = 'Hello from P4749';
dsply theCharVar;
P573();
P4420();
P3927();
return;