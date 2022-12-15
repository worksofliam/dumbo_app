**free

ctl-opt dftactgrp(*no);

dcl-pi P4339;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2893.rpgleinc'
/copy 'qrpgleref/P2185.rpgleinc'
/copy 'qrpgleref/P3884.rpgleinc'

dcl-ds T799 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T799 FROM T799 LIMIT 1;

theCharVar = 'Hello from P4339';
dsply theCharVar;
P2893();
P2185();
P3884();
return;