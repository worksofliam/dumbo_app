**free

ctl-opt dftactgrp(*no);

dcl-pi P980;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P722.rpgleinc'
/copy 'qrpgleref/P766.rpgleinc'
/copy 'qrpgleref/P903.rpgleinc'

dcl-ds T610 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T610 FROM T610 LIMIT 1;

theCharVar = 'Hello from P980';
dsply theCharVar;
callp localProc();
P722();
P766();
P903();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P980 in the procedure';
end-proc;