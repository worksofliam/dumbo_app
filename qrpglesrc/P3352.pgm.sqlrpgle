**free

ctl-opt dftactgrp(*no);

dcl-pi P3352;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2740.rpgleinc'
/copy 'qrpgleref/P48.rpgleinc'
/copy 'qrpgleref/P2905.rpgleinc'

dcl-ds T319 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T319 FROM T319 LIMIT 1;

theCharVar = 'Hello from P3352';
dsply theCharVar;
P2740();
P48();
P2905();
return;