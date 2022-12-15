**free

ctl-opt dftactgrp(*no);

dcl-pi P520;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P311.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'

dcl-ds T417 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T417 FROM T417 LIMIT 1;

theCharVar = 'Hello from P520';
dsply theCharVar;
callp localProc();
P311();
P60();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P520 in the procedure';
end-proc;