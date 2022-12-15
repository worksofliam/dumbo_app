**free

ctl-opt dftactgrp(*no);

dcl-pi P533;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P451.rpgleinc'
/copy 'qrpgleref/P485.rpgleinc'

dcl-ds T266 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T266 FROM T266 LIMIT 1;

theCharVar = 'Hello from P533';
dsply theCharVar;
P84();
P451();
P485();
return;