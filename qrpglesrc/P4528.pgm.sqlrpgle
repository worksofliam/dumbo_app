**free

ctl-opt dftactgrp(*no);

dcl-pi P4528;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3801.rpgleinc'
/copy 'qrpgleref/P3340.rpgleinc'
/copy 'qrpgleref/P768.rpgleinc'

dcl-ds T119 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T119 FROM T119 LIMIT 1;

theCharVar = 'Hello from P4528';
dsply theCharVar;
P3801();
P3340();
P768();
return;