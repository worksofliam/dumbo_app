**free

ctl-opt dftactgrp(*no);

dcl-pi P163;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P86.rpgleinc'

dcl-ds T221 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T221 FROM T221 LIMIT 1;

theCharVar = 'Hello from P163';
dsply theCharVar;
callp localProc();
P18();
P53();
P86();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P163 in the procedure';
end-proc;